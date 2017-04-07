<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class EofExceptionU4 extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\EofExceptionU4 $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_prebuf = $this->_io->readBytes(9);
        $this->_m_failInt = $this->_io->readU4le();
    }
    protected $_m_prebuf;
    protected $_m_failInt;
    public function prebuf() { return $this->_m_prebuf; }
    public function failInt() { return $this->_m_failInt; }
}
