<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Admin extends Authenticatable
{
    use Notifiable;

    protected $fillable = [
        'role_id', 'username', 'email', 'password', 'first_name', 'last_name', 'image', 'status'
    ];

    public function role() {
    return $this->belongsTo(Role::class, 'role_id');
}


    // Nueva relación: muchos a muchos
   public function roles()
{
    return $this->belongsToMany(Role::class, 'admin_role', 'admin_id', 'role_id');
}

    
}
