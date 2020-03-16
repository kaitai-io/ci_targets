<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EnumImport extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\EnumImport $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_pet1 = $this->_io->readU4le();
            $this->_m_pet2 = $this->_io->readU4le();
        }
        protected $_m_pet1;
        protected $_m_pet2;
        public function pet1() { return $this->_m_pet1; }
        public function pet2() { return $this->_m_pet2; }
    }
}
