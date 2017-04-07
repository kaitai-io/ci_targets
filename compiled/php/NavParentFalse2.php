<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class NavParentFalse2 extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\NavParentFalse2 $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_parentless = new \Kaitai\Struct\Tests\NavParentFalse2\Child($this->_io, null, $this->_root);
    }
    protected $_m_parentless;
    public function parentless() { return $this->_m_parentless; }
}

namespace Kaitai\Struct\Tests\NavParentFalse2;

class Child extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\NavParentFalse2 $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_foo = $this->_io->readU1();
    }
    protected $_m_foo;
    public function foo() { return $this->_m_foo; }
}
