<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class RepeatEosStruct extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\RepeatEosStruct $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_chunks = [];
        while (!$this->_io->isEof()) {
            $this->_m_chunks[] = new \Kaitai\Struct\Tests\RepeatEosStruct\Chunk($this->_io, $this, $this->_root);
        }
    }
    protected $_m_chunks;
    public function chunks() { return $this->_m_chunks; }
}

namespace Kaitai\Struct\Tests\RepeatEosStruct;

class Chunk extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\RepeatEosStruct $parent = null, \Kaitai\Struct\Tests\RepeatEosStruct $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_offset = $this->_io->readU4le();
        $this->_m_len = $this->_io->readU4le();
    }
    protected $_m_offset;
    protected $_m_len;
    public function offset() { return $this->_m_offset; }
    public function len() { return $this->_m_len; }
}
