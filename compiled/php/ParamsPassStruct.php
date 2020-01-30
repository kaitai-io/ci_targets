<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ParamsPassStruct extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ParamsPassStruct $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_first = new \Kaitai\Struct\Tests\ParamsPassStruct\Block($this->_io, $this, $this->_root);
            $this->_m_one = new \Kaitai\Struct\Tests\ParamsPassStruct\StructType($this->first(), $this->_io, $this, $this->_root);
        }
        protected $_m_first;
        protected $_m_one;
        public function first() { return $this->_m_first; }
        public function one() { return $this->_m_one; }
    }
}

namespace Kaitai\Struct\Tests\ParamsPassStruct {
    class Block extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ParamsPassStruct $_parent = null, \Kaitai\Struct\Tests\ParamsPassStruct $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readU1();
        }
        protected $_m_foo;
        public function foo() { return $this->_m_foo; }
    }
}

namespace Kaitai\Struct\Tests\ParamsPassStruct {
    class StructType extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Struct $foo, \Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ParamsPassStruct $_parent = null, \Kaitai\Struct\Tests\ParamsPassStruct $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m_foo = $foo;
            $this->_read();
        }

        private function _read() {
            $this->_m_bar = new \Kaitai\Struct\Tests\ParamsPassStruct\StructType\Baz($this->foo(), $this->_io, $this, $this->_root);
        }
        protected $_m_bar;
        protected $_m_foo;
        public function bar() { return $this->_m_bar; }
        public function foo() { return $this->_m_foo; }
    }
}

namespace Kaitai\Struct\Tests\ParamsPassStruct\StructType {
    class Baz extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Struct $foo, \Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ParamsPassStruct\StructType $_parent = null, \Kaitai\Struct\Tests\ParamsPassStruct $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m_foo = $foo;
            $this->_read();
        }

        private function _read() {
            $this->_m_qux = $this->_io->readU1();
        }
        protected $_m_qux;
        protected $_m_foo;
        public function qux() { return $this->_m_qux; }
        public function foo() { return $this->_m_foo; }
    }
}
