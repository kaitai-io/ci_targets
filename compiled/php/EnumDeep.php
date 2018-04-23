<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class EnumDeep extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\EnumDeep $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_pet1 = $this->_io->readU4le();
        $this->_m_pet2 = $this->_io->readU4le();
    }
    protected $_m_pet1;
    protected $_m_pet2;
    public function pet1() { return $this->_m_pet1; }
    public function pet2() { return $this->_m_pet2; }
}

namespace Kaitai\Struct\Tests\EnumDeep;

class Container1 extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\EnumDeep $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
    }
}

namespace Kaitai\Struct\Tests\EnumDeep\Container1;

class Container2 extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\EnumDeep $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
    }
}

namespace Kaitai\Struct\Tests\EnumDeep\Container1\Container2;

class Animal {
    const CANARY = 4;
    const TURTLE = 7;
    const HARE = 12;
}

namespace Kaitai\Struct\Tests\EnumDeep\Container1;

class Animal {
    const DOG = 4;
    const CAT = 7;
    const CHICKEN = 12;
}
