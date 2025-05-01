<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EnumImportLiterals extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\EnumImportLiterals $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_pet1Eq;
        public function pet1Eq() {
            if ($this->_m_pet1Eq !== null)
                return $this->_m_pet1Eq;
            $this->_m_pet1Eq = (true ? \Kaitai\Struct\Tests\Enum0\Animal::CHICKEN : \Kaitai\Struct\Tests\Enum0\Animal::DOG) == \Kaitai\Struct\Tests\Enum0\Animal::CHICKEN;
            return $this->_m_pet1Eq;
        }
        protected $_m_pet1ToI;
        public function pet1ToI() {
            if ($this->_m_pet1ToI !== null)
                return $this->_m_pet1ToI;
            $this->_m_pet1ToI = \Kaitai\Struct\Tests\Enum0\Animal::CAT;
            return $this->_m_pet1ToI;
        }
        protected $_m_pet2;
        public function pet2() {
            if ($this->_m_pet2 !== null)
                return $this->_m_pet2;
            $this->_m_pet2 = \Kaitai\Struct\Tests\EnumDeep\Container1\Container2\Animal::HARE;
            return $this->_m_pet2;
        }
    }
}
