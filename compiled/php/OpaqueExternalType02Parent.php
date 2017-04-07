<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class OpaqueExternalType02Parent extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\OpaqueExternalType02Parent $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_parent = new \Kaitai\Struct\Tests\OpaqueExternalType02Parent\ParentObj($this->_io, $this, $this->_root);
    }
    protected $_m_parent;
    public function parent() { return $this->_m_parent; }
}

namespace Kaitai\Struct\Tests\OpaqueExternalType02Parent;

class ParentObj extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\OpaqueExternalType02Parent $parent = null, \Kaitai\Struct\Tests\OpaqueExternalType02Parent $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_child = new \Kaitai\Struct\Tests\OpaqueExternalType02Child($this->_io);
    }
    protected $_m_child;
    public function child() { return $this->_m_child; }
}
