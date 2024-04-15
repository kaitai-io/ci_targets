<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class DefaultBitEndianMod extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\DefaultBitEndianMod $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_main = new \Kaitai\Struct\Tests\DefaultBitEndianMod\MainObj($this->_io, $this, $this->_root);
        }
        protected $_m_main;
        public function main() { return $this->_m_main; }
    }
}

namespace Kaitai\Struct\Tests\DefaultBitEndianMod {
    class MainObj extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\DefaultBitEndianMod $_parent = null, \Kaitai\Struct\Tests\DefaultBitEndianMod $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = $this->_io->readBitsIntLe(9);
            $this->_m_two = $this->_io->readBitsIntLe(15);
            $this->_io->alignToByte();
            $this->_m_nest = new \Kaitai\Struct\Tests\DefaultBitEndianMod\MainObj\Subnest($this->_io, $this, $this->_root);
            $this->_m_nestBe = new \Kaitai\Struct\Tests\DefaultBitEndianMod\MainObj\SubnestBe($this->_io, $this, $this->_root);
        }
        protected $_m_one;
        protected $_m_two;
        protected $_m_nest;
        protected $_m_nestBe;
        public function one() { return $this->_m_one; }
        public function two() { return $this->_m_two; }
        public function nest() { return $this->_m_nest; }
        public function nestBe() { return $this->_m_nestBe; }
    }
}

namespace Kaitai\Struct\Tests\DefaultBitEndianMod\MainObj {
    class Subnest extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\DefaultBitEndianMod\MainObj $_parent = null, \Kaitai\Struct\Tests\DefaultBitEndianMod $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_two = $this->_io->readBitsIntLe(16);
        }
        protected $_m_two;
        public function two() { return $this->_m_two; }
    }
}

namespace Kaitai\Struct\Tests\DefaultBitEndianMod\MainObj {
    class SubnestBe extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\DefaultBitEndianMod\MainObj $_parent = null, \Kaitai\Struct\Tests\DefaultBitEndianMod $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_two = $this->_io->readBitsIntBe(16);
        }
        protected $_m_two;
        public function two() { return $this->_m_two; }
    }
}
