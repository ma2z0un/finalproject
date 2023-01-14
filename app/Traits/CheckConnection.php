<?php
namespace App\Traits;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

trait CheckConnection{

    public function checkConnection(){
        try {
            // 
              //update the config
            // dd('ss   ');
            $connect=DB::connection()->getPdo();
            // dd('after connect');
            if ($connect) {
             
            //     $dbname=DB::connection()->getDatabaseName();
            //     $dbname = 'ali';
               
            //     // $hasDb = DB::connection('pgsql')->select("SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = "."'".$dbname."'");
             
            //     // if(empty($hasDb)) {
                  
            //     //     $tables = DB::connection()->select("SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA ");;
                    
            //     //     dd( $tables);
            //     //     DB::connection('pgsql')->select('CREATE DATABASE '. $dbname);
                 
            //     //     // $this->info("Database '$dbname' created for 'pgsql' connection");
            //     }
            // //    dd('ss');
            //   dd($dbname);
            return true;
            }
            // dd('ss');
          
        } catch (\Throwable $th) {
            // dd('catch1');
            return false;
        }
    }

}