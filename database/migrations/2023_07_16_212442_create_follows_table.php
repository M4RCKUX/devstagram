<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('follows', function (Blueprint $table) {
            $table->id();
            $table->foreignId('follower_id')
                ->constrained('users')
                ->onDelete('cascade');
            $table->foreignId('followed_id')
                ->constrained('users')
                ->onDelete('cascade');
            $table->timestamps();

            $table->unique(['follower_id', 'followed_id']);
        });

        DB::statement('ALTER TABLE follows ADD CONSTRAINT check_follower_followed_different CHECK (follower_id<>followed_id);');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('follows');
    }
};
