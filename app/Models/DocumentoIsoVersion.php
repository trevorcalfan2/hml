<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DocumentoIsoVersion extends Model
{
    protected $table = 'documento_iso_versions';
    protected $primaryKey = 'id';

    protected $fillable = [
        'documento_iso_id', 'archivo', 'comentario', 'user_id', 'created_at'
    ];

    public $timestamps = false; // Usamos created_at manual

    public function user()
    {
        return $this->belongsTo(Admin::class, 'user_id');
    }



    public function documento()
    {
        return $this->belongsTo(DocumentoIso::class, 'documento_iso_id');
    }
    protected static function boot()
{
    parent::boot();

    // Evita que accidentalmente intente guardar 'updated_at'
    static::saving(function ($model) {
        unset($model->updated_at);
    });

    static::creating(function ($model) {
        unset($model->updated_at);
    });

    static::updating(function ($model) {
        unset($model->updated_at);
    });
    
}

}

?>