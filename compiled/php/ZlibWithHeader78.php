<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ZlibWithHeader78 extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\ZlibWithHeader78 $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m__raw_data = $this->_io->readBytesFull();
        $this->_m_data = \Kaitai\Struct\Stream::processZlib($this->_m__raw_data);
    }
    protected $_m_data;
    protected $_m__raw_data;
    public function data() { return $this->_m_data; }
    public function _raw_data() { return $this->_m__raw_data; }
}
