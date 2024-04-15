<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class SwitchIntegers extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\SwitchIntegers $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_opcodes = [];
            $i = 0;
            while (!$this->_io->isEof()) {
                $this->_m_opcodes[] = new \Kaitai\Struct\Tests\SwitchIntegers\Opcode($this->_io, $this, $this->_root);
                $i++;
            }
        }
        protected $_m_opcodes;
        public function opcodes() { return $this->_m_opcodes; }
    }
}

namespace Kaitai\Struct\Tests\SwitchIntegers {
    class Opcode extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\SwitchIntegers $_parent = null, \Kaitai\Struct\Tests\SwitchIntegers $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_code = $this->_io->readU1();
            switch ($this->code()) {
                case 1:
                    $this->_m_body = $this->_io->readU1();
                    break;
                case 2:
                    $this->_m_body = $this->_io->readU2le();
                    break;
                case 4:
                    $this->_m_body = $this->_io->readU4le();
                    break;
                case 8:
                    $this->_m_body = $this->_io->readU8le();
                    break;
            }
        }
        protected $_m_code;
        protected $_m_body;
        public function code() { return $this->_m_code; }
        public function body() { return $this->_m_body; }
    }
}
