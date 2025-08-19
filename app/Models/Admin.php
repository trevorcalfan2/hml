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

    // Relación antigua (un solo rol, opcional mantener por compatibilidad)
    public function role() {
        return $this->belongsTo('App\Models\Role');
    }

    // Nueva relación: muchos a muchos
    public function roles()
    {
        return $this->belongsToMany(Role::class, 'admin_role', 'admin_id', 'role_id');
    }
}
