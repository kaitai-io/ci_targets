<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class EnumForUnknownId extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\EnumForUnknownId $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
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
