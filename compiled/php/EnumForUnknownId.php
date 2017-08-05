<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class EnumForUnknownId extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\EnumForUnknownId $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_one = $this->_io->readU1();
    }
    protected $_m_one;
    public function one() { return $this->_m_one; }
}

namespace Kaitai\Struct\Tests\EnumForUnknownId;

class Animal {
    const DOG = 4;
    const CAT = 7;
    const CHICKEN = 12;
}
