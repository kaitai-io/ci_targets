<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class SwitchManualIntSize extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\SwitchManualIntSize $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_chunks = [];
        while (!$this->_io->isEof()) {
            $this->_m_chunks[] = new \Kaitai\Struct\Tests\SwitchManualIntSize\Chunk($this->_io, $this, $this->_root);
        }
    }
    protected $_m_chunks;
    public function chunks() { return $this->_m_chunks; }
}

namespace Kaitai\Struct\Tests\SwitchManualIntSize;

class Chunk extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\SwitchManualIntSize $parent = null, \Kaitai\Struct\Tests\SwitchManualIntSize $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_code = $this->_io->readU1();
        $this->_m_size = $this->_io->readU4le();
        switch ($this->code()) {
            case 17:
                $this->_m__raw_body = $this->_io->readBytes($this->size());
                $io = new \Kaitai\Struct\Stream($this->_m__raw_body);
                $this->_m_body = new \Kaitai\Struct\Tests\SwitchManualIntSize\Chunk\ChunkMeta($io, $this, $this->_root);
                break;
            case 34:
                $this->_m__raw_body = $this->_io->readBytes($this->size());
                $io = new \Kaitai\Struct\Stream($this->_m__raw_body);
                $this->_m_body = new \Kaitai\Struct\Tests\SwitchManualIntSize\Chunk\ChunkDir($io, $this, $this->_root);
                break;
            default:
                $this->_m_body = $this->_io->readBytes($this->size());
                break;
        }
    }
    protected $_m_code;
    protected $_m_size;
    protected $_m_body;
    protected $_m__raw_body;
    public function code() { return $this->_m_code; }
    public function size() { return $this->_m_size; }
    public function body() { return $this->_m_body; }
    public function _raw_body() { return $this->_m__raw_body; }
}

namespace Kaitai\Struct\Tests\SwitchManualIntSize\Chunk;

class ChunkMeta extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\SwitchManualIntSize\Chunk $parent = null, \Kaitai\Struct\Tests\SwitchManualIntSize $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_title = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(0, false, true, true), "UTF-8");
        $this->_m_author = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(0, false, true, true), "UTF-8");
    }
    protected $_m_title;
    protected $_m_author;
    public function title() { return $this->_m_title; }
    public function author() { return $this->_m_author; }
}

namespace Kaitai\Struct\Tests\SwitchManualIntSize\Chunk;

class ChunkDir extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\SwitchManualIntSize\Chunk $parent = null, \Kaitai\Struct\Tests\SwitchManualIntSize $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_entries = [];
        while (!$this->_io->isEof()) {
            $this->_m_entries[] = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(4), "UTF-8");
        }
    }
    protected $_m_entries;
    public function entries() { return $this->_m_entries; }
}
