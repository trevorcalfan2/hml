<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DocumentoIsoLog extends Model
{
    protected $table = 'documento_iso_logs';
    protected $primaryKey = 'id';

    protected $fillable = [
        'documento_iso_id', 'user_id', 'accion', 'descripcion', 'created_at'
    ];

    public $timestamps = false;

    public function documento()
    {
        return $this->belongsTo(DocumentoIso::class, 'documento_iso_id');
    }
}

?>