<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ProcessXor4Const extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\ProcessXor4Const $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_key = $this->_io->readBytes(4);
        $this->_m__raw_buf = $this->_io->readBytesFull();
        $this->_m_buf = \Kaitai\Struct\Stream::processXorMany($this->_m__raw_buf, "\xEC\xBB\xA3\x14");
    }
    protected $_m_key;
    protected $_m_buf;
    protected $_m__raw_buf;
    public function key() { return $this->_m_key; }
    public function buf() { return $this->_m_buf; }
    public function _raw_buf() { return $this->_m__raw_buf; }
}
