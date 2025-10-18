<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ParamsPassArrayIo extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ParamsPassArrayIo $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_first = $this->_io->readBytes(1);
            $_io__raw_first = new \Kaitai\Struct\Stream($this->_m__raw_first);
            $this->_m_first = new \Kaitai\Struct\Tests\ParamsPassArrayIo\Block($_io__raw_first, $this, $this->_root);
            $this->_m_one = new \Kaitai\Struct\Tests\ParamsPassArrayIo\ParamType([$this->first()->_io(), $this->_root()->_io()], $this->_io, $this, $this->_root);
        }
        public function first() { return $this->_m_first; }
        public function one() { return $this->_m_one; }
        public function _raw_first() { return $this->_m__raw_first; }
        protected $_m_first;
        protected $_m_one;
        protected $_m__raw_first;
    }
}

namespace Kaitai\Struct\Tests\ParamsPassArrayIo {
    class Block extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\ParamsPassArrayIo $_parent = null, ?\Kaitai\Struct\Tests\ParamsPassArrayIo $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readU1();
        }
        public function foo() { return $this->_m_foo; }
        protected $_m_foo;
    }
}

namespace Kaitai\Struct\Tests\ParamsPassArrayIo {
    class ParamType extends \Kaitai\Struct\Struct {
        public function __construct(array $argStreams, \Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\ParamsPassArrayIo $_parent = null, ?\Kaitai\Struct\Tests\ParamsPassArrayIo $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m_argStreams = $argStreams;
            $this->_read();
        }

        private function _read() {
            $this->_m_buf = $this->_io->readBytes($this->argStreams()[0]->size());
        }
        public function buf() { return $this->_m_buf; }
        public function argStreams() { return $this->_m_argStreams; }
        protected $_m_buf;
        protected $_m_argStreams;
    }
}
