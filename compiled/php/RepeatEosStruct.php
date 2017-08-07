<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class RepeatEosStruct extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\RepeatEosStruct $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_chunks = [];
        $i = 0;
        while (!$this->_io->isEof()) {
            $this->_m_chunks[] = new \Kaitai\Struct\Tests\RepeatEosStruct\Chunk($this->_io, $this, $this->_root);
            $i++;
        }
    }
    protected $_m_chunks;
    public function chunks() { return $this->_m_chunks; }
}

namespace Kaitai\Struct\Tests\RepeatEosStruct;

class Chunk extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\RepeatEosStruct $_parent = null, \Kaitai\Struct\Tests\RepeatEosStruct $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_offset = $this->_io->readU4le();
        $this->_m_len = $this->_io->readU4le();
    }
    protected $_m_offset;
    protected $_m_len;
    public function offset() { return $this->_m_offset; }
    public function len() { return $this->_m_len; }
}
