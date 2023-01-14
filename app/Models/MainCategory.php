<?php

namespace App\Models;

use App\Observers\MaincategoryObserve;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MainCategory extends Model
{
    use HasFactory;
    protected $table='main_categories';
    protected $fillable = [
        'id','translation_lang', 'translation_of', 'name', 'slug', 'photo', 'active', 'created_at', 'updated_at'
    ];

    public function scopeActive($query){
        return $query->where('active',1);
    }
    public function getActive(){
        return  $this->active==1 ? 'مفعل' :'غير مفعل';
      }
    public function scopeSelection($query){
        return $query->select('id', 'translation_lang', 'name', 'slug', 'photo', 'active','translation_of');
    }
    public function getPhotoAttribute($val){
        return $val!==null ? asset('assets/'.$val) : '';
    }
    public function categories(){
        return $this->hasMany(self::class,'translation_of','id');
    }
    public function Parent(){
        // return 'ss';
        // return $this->belongsTo(self::class,'translation_of','id');
        return $this->belongsTo(self::class,'translation_of','id')->with('categories');
    }
    public function vendors(){
        return $this->hasMany('App\Models\Vendor','category_id','id');
    }

    protected static function boot()
    {
        parent::boot();
        MainCategory::observe(MaincategoryObserve::class);
    }

}
