<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ParamsPassUsertype extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ParamsPassUsertype $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_first = new \Kaitai\Struct\Tests\ParamsPassUsertype\Block($this->_io, $this, $this->_root);
        $this->_m_one = new \Kaitai\Struct\Tests\ParamsPassUsertype\ParamType($this->first(), $this->_io, $this, $this->_root);
    }
    protected $_m_first;
    protected $_m_one;
    public function first() { return $this->_m_first; }
    public function one() { return $this->_m_one; }
}

namespace Kaitai\Struct\Tests\ParamsPassUsertype;

class Block extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ParamsPassUsertype $_parent = null, \Kaitai\Struct\Tests\ParamsPassUsertype $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_foo = $this->_io->readU1();
    }
    protected $_m_foo;
    public function foo() { return $this->_m_foo; }
}

namespace Kaitai\Struct\Tests\ParamsPassUsertype;

class ParamType extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Tests\ParamsPassUsertype\Block $foo, \Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ParamsPassUsertype $_parent = null, \Kaitai\Struct\Tests\ParamsPassUsertype $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_m_foo = $foo;
        $this->_read();
    }

    private function _read() {
        $this->_m_buf = $this->_io->readBytes($this->foo()->foo());
    }
    protected $_m_buf;
    protected $_m_foo;
    public function buf() { return $this->_m_buf; }
    public function foo() { return $this->_m_foo; }
}
