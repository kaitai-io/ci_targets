<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class SwitchElseOnly extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\SwitchElseOnly $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_opcode = $this->_io->readS1();
            $this->_m_primByte = $this->_io->readS1();
            $this->_m_indicator = $this->_io->readBytes(4);
            $this->_m_ut = new \Kaitai\Struct\Tests\SwitchElseOnly\Data($this->_io, $this, $this->_root);
        }
        public function opcode() { return $this->_m_opcode; }
        public function primByte() { return $this->_m_primByte; }
        public function indicator() { return $this->_m_indicator; }
        public function ut() { return $this->_m_ut; }
        protected $_m_opcode;
        protected $_m_primByte;
        protected $_m_indicator;
        protected $_m_ut;
    }
}

namespace Kaitai\Struct\Tests\SwitchElseOnly {
    class Data extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\SwitchElseOnly $_parent = null, ?\Kaitai\Struct\Tests\SwitchElseOnly $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = $this->_io->readBytes(4);
        }
        public function value() { return $this->_m_value; }
        protected $_m_value;
    }
}
