<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ParamsPassArrayStruct extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ParamsPassArrayStruct $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = new \Kaitai\Struct\Tests\ParamsPassArrayStruct\Foo($this->_io, $this, $this->_root);
            $this->_m_two = new \Kaitai\Struct\Tests\ParamsPassArrayStruct\Bar($this->_io, $this, $this->_root);
            $this->_m_passStructs = new \Kaitai\Struct\Tests\ParamsPassArrayStruct\StructType($this->oneTwo(), $this->_io, $this, $this->_root);
        }
        protected $_m_oneTwo;
        public function oneTwo() {
            if ($this->_m_oneTwo !== null)
                return $this->_m_oneTwo;
            $this->_m_oneTwo = [$this->one(), $this->two()];
            return $this->_m_oneTwo;
        }
        protected $_m_one;
        protected $_m_two;
        protected $_m_passStructs;
        public function one() { return $this->_m_one; }
        public function two() { return $this->_m_two; }
        public function passStructs() { return $this->_m_passStructs; }
    }
}

namespace Kaitai\Struct\Tests\ParamsPassArrayStruct {
    class Foo extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ParamsPassArrayStruct $_parent = null, \Kaitai\Struct\Tests\ParamsPassArrayStruct $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_f = $this->_io->readU1();
        }
        protected $_m_f;
        public function f() { return $this->_m_f; }
    }
}

namespace Kaitai\Struct\Tests\ParamsPassArrayStruct {
    class Bar extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ParamsPassArrayStruct $_parent = null, \Kaitai\Struct\Tests\ParamsPassArrayStruct $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_b = $this->_io->readU1();
        }
        protected $_m_b;
        public function b() { return $this->_m_b; }
    }
}

namespace Kaitai\Struct\Tests\ParamsPassArrayStruct {
    class StructType extends \Kaitai\Struct\Struct {
        public function __construct(array $structs, \Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ParamsPassArrayStruct $_parent = null, \Kaitai\Struct\Tests\ParamsPassArrayStruct $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m_structs = $structs;
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_structs;
        public function structs() { return $this->_m_structs; }
    }
}
