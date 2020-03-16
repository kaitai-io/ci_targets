<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidSwitch extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ValidSwitch $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_a = $this->_io->readU1();
            switch ($this->a()) {
                case 80:
                    $this->_m_b = $this->_io->readU2le();
                    break;
                default:
                    $this->_m_b = $this->_io->readU2be();
                    break;
            }
        }
        protected $_m_a;
        protected $_m_b;
        public function a() { return $this->_m_a; }
        public function b() { return $this->_m_b; }
    }
}
