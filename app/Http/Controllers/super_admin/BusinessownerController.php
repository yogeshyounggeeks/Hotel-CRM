<?php

namespace App\Http\Controllers\super_admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\super_admin\Businessowner;
use DB;
use Auth;

class BusinessownerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
		$data = Businessowner::paginate(10);
		return view('super_admin.businessowner',$data);
	}

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('super_admin.add-businessowner');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
		$request->validate([
            'name' => 'required',
            'small_description' => 'required',
			'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
		unset($request['_token']);

        $imageName = time().'.'.$request->image->extension();  
        $request->image->move(public_path('images/businessowner/'), $imageName);
		
        Businessowner::create(array_merge($request->all() , ['created_by'=>Auth::user()->id,'image'=>$imageName]));
        return redirect()->route('businessownerList')->with('success','Add Successfully.');        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $businessowner = Businessowner::find($id);
		if($businessowner){
			return view('super_admin.edit-businessowner',compact('businessowner'));
		}else{
			with('error','Error.');
		}		
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $businessowner = Businessowner::find($id);
		if($businessowner){
			
			$request->validate([
				'name' => 'required',
				'small_description' => 'required',
				'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
			]);
			
			if(!empty($request->input('image'))){
				$imageName = time().'.'.$request->image->extension();  
				$request->image->move(public_path('images/businessowner/'), $imageName);
				$businessowner->update(array_merge($request->all() , ['image'=>$imageName]));
			}else{
				$businessowner->update($request->all());
			}
			
			return redirect()->route('businessownerList')->with('success','Update Successfully.');        //
		}else{
			with('error','Error.');
		}
		
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
		$businessownerimage = Businessowner::find($id);
        $businessowner = Businessowner::where('id',$id)->delete();
		return redirect()->route('businessownerList')->with('success','Delete Successfully.');        //
    }
}
