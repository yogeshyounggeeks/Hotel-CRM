<?php
use Hyn\Tenancy\Models\Website;
if (! function_exists('lookfortenant')) {
    function lookfortenant($slug) {
    	$website = Website::where('uuid' , $slug)->first();
    	if(!empty($website)){

    		config(['database.connections.tenant.database' => $website->uuid]);
    		config(['database.default' => 'tenant']);
    		DB::purge('mysql');

    		return true;
    	}
        return false;
    }
}