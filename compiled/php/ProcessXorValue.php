<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ProcessXorValue extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\ProcessXorValue $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_key = $this->_io->readU1();
        $this->_m__raw_buf = $this->_io->readBytesFull();
        $this->_m_buf = \Kaitai\Struct\Stream::processXorOne($this->_m__raw_buf, $this->key());
    }
    protected $_m_key;
    protected $_m_buf;
    protected $_m__raw_buf;
    public function key() { return $this->_m_key; }
    public function buf() { return $this->_m_buf; }
    public function _raw_buf() { return $this->_m__raw_buf; }
}
