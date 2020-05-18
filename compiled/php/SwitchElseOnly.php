<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class SwitchElseOnly extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\SwitchElseOnly $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_opcode = $this->_io->readS1();
            $this->_m_primByte = $this->_io->readS1();
            $this->_m_indicator = $this->_io->readBytes(4);
            $this->_m_struct = new \Kaitai\Struct\Tests\SwitchElseOnly\Data($this->_io, $this, $this->_root);
        }
        protected $_m_opcode;
        protected $_m_primByte;
        protected $_m_indicator;
        protected $_m_struct;
        public function opcode() { return $this->_m_opcode; }
        public function primByte() { return $this->_m_primByte; }
        public function indicator() { return $this->_m_indicator; }
        public function struct() { return $this->_m_struct; }
    }
}

namespace Kaitai\Struct\Tests\SwitchElseOnly {
    class Data extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\SwitchElseOnly $_parent = null, \Kaitai\Struct\Tests\SwitchElseOnly $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = $this->_io->readBytes(4);
        }
        protected $_m_value;
        public function value() { return $this->_m_value; }
    }
}
