<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class DefaultEndianMod extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\DefaultEndianMod $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_main = new \Kaitai\Struct\Tests\DefaultEndianMod\MainObj($this->_io, $this, $this->_root);
        }
        protected $_m_main;
        public function main() { return $this->_m_main; }
    }
}

namespace Kaitai\Struct\Tests\DefaultEndianMod {
    class MainObj extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\DefaultEndianMod $_parent = null, \Kaitai\Struct\Tests\DefaultEndianMod $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = $this->_io->readS4le();
            $this->_m_nest = new \Kaitai\Struct\Tests\DefaultEndianMod\MainObj\Subnest($this->_io, $this, $this->_root);
            $this->_m_nestBe = new \Kaitai\Struct\Tests\DefaultEndianMod\MainObj\SubnestBe($this->_io, $this, $this->_root);
        }
        protected $_m_one;
        protected $_m_nest;
        protected $_m_nestBe;
        public function one() { return $this->_m_one; }
        public function nest() { return $this->_m_nest; }
        public function nestBe() { return $this->_m_nestBe; }
    }
}

namespace Kaitai\Struct\Tests\DefaultEndianMod\MainObj {
    class Subnest extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\DefaultEndianMod\MainObj $_parent = null, \Kaitai\Struct\Tests\DefaultEndianMod $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_two = $this->_io->readS4le();
        }
        protected $_m_two;
        public function two() { return $this->_m_two; }
    }
}

namespace Kaitai\Struct\Tests\DefaultEndianMod\MainObj {
    class SubnestBe extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\DefaultEndianMod\MainObj $_parent = null, \Kaitai\Struct\Tests\DefaultEndianMod $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_two = $this->_io->readS4be();
        }
        protected $_m_two;
        public function two() { return $this->_m_two; }
    }
}
