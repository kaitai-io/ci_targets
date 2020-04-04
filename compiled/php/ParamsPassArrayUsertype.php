<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ParamsPassArrayUsertype extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ParamsPassArrayUsertype $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_blocks = [];
            $n = 2;
            for ($i = 0; $i < $n; $i++) {
                $this->_m_blocks[] = new \Kaitai\Struct\Tests\ParamsPassArrayUsertype\Block($this->_io, $this, $this->_root);
            }
            $this->_m_passBlocks = new \Kaitai\Struct\Tests\ParamsPassArrayUsertype\ParamType($this->blocks(), $this->_io, $this, $this->_root);
        }
        protected $_m_blocks;
        protected $_m_passBlocks;
        public function blocks() { return $this->_m_blocks; }
        public function passBlocks() { return $this->_m_passBlocks; }
    }
}

namespace Kaitai\Struct\Tests\ParamsPassArrayUsertype {
    class Block extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ParamsPassArrayUsertype $_parent = null, \Kaitai\Struct\Tests\ParamsPassArrayUsertype $_root = null) {
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

namespace Kaitai\Struct\Tests\ParamsPassArrayUsertype {
    class ParamType extends \Kaitai\Struct\Struct {
        public function __construct(array $bar, \Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ParamsPassArrayUsertype $_parent = null, \Kaitai\Struct\Tests\ParamsPassArrayUsertype $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m_bar = $bar;
            $this->_read();
        }

        private function _read() {
            $this->_m_one = $this->_io->readBytes($this->bar()[0]->foo());
            $this->_m_two = $this->_io->readBytes($this->bar()[1]->foo());
        }
        protected $_m_one;
        protected $_m_two;
        protected $_m_bar;
        public function one() { return $this->_m_one; }
        public function two() { return $this->_m_two; }
        public function bar() { return $this->_m_bar; }
    }
}
