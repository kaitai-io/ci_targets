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
            switch ($this->opcode()) {
                default:
                    $this->_m_primByte = $this->_io->readS1();
                    break;
            }
            switch ($this->opcode()) {
                default:
                    $this->_m_struct = new \Kaitai\Struct\Tests\SwitchElseOnly\Data($this->_io, $this, $this->_root);
                    break;
            }
            switch ($this->opcode()) {
                default:
                    $this->_m__raw_structSized = $this->_io->readBytes(4);
                    $_io__raw_structSized = new \Kaitai\Struct\Stream($this->_m__raw_structSized);
                    $this->_m_structSized = new \Kaitai\Struct\Tests\SwitchElseOnly\Data($_io__raw_structSized, $this, $this->_root);
                    break;
            }
        }
        protected $_m_opcode;
        protected $_m_primByte;
        protected $_m_struct;
        protected $_m_structSized;
        protected $_m__raw_structSized;
        public function opcode() { return $this->_m_opcode; }
        public function primByte() { return $this->_m_primByte; }
        public function struct() { return $this->_m_struct; }
        public function structSized() { return $this->_m_structSized; }
        public function _raw_structSized() { return $this->_m__raw_structSized; }
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
