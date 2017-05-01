<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class NestedSameName extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\NestedSameName $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_mainData = new \Kaitai\Struct\Tests\NestedSameName\Main($this->_io, $this, $this->_root);
        $this->_m_dummy = new \Kaitai\Struct\Tests\NestedSameName\DummyObj($this->_io, $this, $this->_root);
    }
    protected $_m_mainData;
    protected $_m_dummy;
    public function mainData() { return $this->_m_mainData; }
    public function dummy() { return $this->_m_dummy; }
}

namespace Kaitai\Struct\Tests\NestedSameName;

class Main extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\NestedSameName $parent = null, \Kaitai\Struct\Tests\NestedSameName $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_mainSize = $this->_io->readS4le();
        $this->_m_foo = new \Kaitai\Struct\Tests\NestedSameName\Main\FooObj($this->_io, $this, $this->_root);
    }
    protected $_m_mainSize;
    protected $_m_foo;
    public function mainSize() { return $this->_m_mainSize; }
    public function foo() { return $this->_m_foo; }
}

namespace Kaitai\Struct\Tests\NestedSameName\Main;

class FooObj extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\NestedSameName\Main $parent = null, \Kaitai\Struct\Tests\NestedSameName $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_data = $this->_io->readBytes(($this->_parent()->mainSize() * 2));
    }
    protected $_m_data;
    public function data() { return $this->_m_data; }
}

namespace Kaitai\Struct\Tests\NestedSameName;

class DummyObj extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\NestedSameName $parent = null, \Kaitai\Struct\Tests\NestedSameName $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
    }
}

namespace Kaitai\Struct\Tests\NestedSameName\DummyObj;

class Foo extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\NestedSameName $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
    }
}
