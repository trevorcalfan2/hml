<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
  protected $fillable = [
    'name',
    'permissions',
];

    
    public function admins()
{
    return $this->belongsToMany(Admin::class, 'admin_role', 'role_id', 'admin_id');
}
public function areas()
{
    return $this->belongsToMany(Area::class, 'role_area', 'role_id', 'area_id');
}


}
