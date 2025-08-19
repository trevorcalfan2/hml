<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Area extends Model
{
    protected $table = 'area';
    protected $primaryKey = 'area_id';

    protected $fillable = ['nombre'];

    public function procesos()
    {
        return $this->hasMany(Process::class, 'area_id', 'area_id');
    }
}
