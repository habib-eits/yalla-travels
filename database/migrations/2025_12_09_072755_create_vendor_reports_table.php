<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('vendor_reports', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('generated_by')->nullable();
            $table->date('departure_start');
            $table->date('departure_end');
            $table->date('generated_date')->useCurrent();
            $table->timestamps();

            $table->index('generated_by');
            $table->index('generated_date');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('vendor_reports');
    }
};
