<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    protected $table = 'roles';

    protected $fillable = [
        'name',
        'permissions',
    ];

    public function admins()
    {
        return $this->hasMany('App\Models\Admin');
    }

    // Relación muchos a muchos con documentos ISO
    public function documentosIso()
    {
        return $this->belongsToMany(DocumentoIso::class, 'documento_iso_role', 'role_id', 'documento_iso_id');
    }

    // Helper para manejar los permisos en array
    public function getPermissionsArrayAttribute()
    {
        return json_decode($this->permissions, true) ?? [];
    }
}
