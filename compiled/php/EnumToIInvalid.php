<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EnumToIInvalid extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\EnumToIInvalid $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_pet1 = $this->_io->readU1();
            $this->_m_pet2 = $this->_io->readU1();
        }
        protected $_m_oneLtTwo;
        public function oneLtTwo() {
            if ($this->_m_oneLtTwo !== null)
                return $this->_m_oneLtTwo;
            $this->_m_oneLtTwo = $this->pet1() < $this->pet2();
            return $this->_m_oneLtTwo;
        }
        protected $_m_pet2EqIntF;
        public function pet2EqIntF() {
            if ($this->_m_pet2EqIntF !== null)
                return $this->_m_pet2EqIntF;
            $this->_m_pet2EqIntF = $this->pet2() == 110;
            return $this->_m_pet2EqIntF;
        }
        protected $_m_pet2EqIntT;
        public function pet2EqIntT() {
            if ($this->_m_pet2EqIntT !== null)
                return $this->_m_pet2EqIntT;
            $this->_m_pet2EqIntT = $this->pet2() == 111;
            return $this->_m_pet2EqIntT;
        }
        protected $_m_pet2I;
        public function pet2I() {
            if ($this->_m_pet2I !== null)
                return $this->_m_pet2I;
            $this->_m_pet2I = $this->pet2();
            return $this->_m_pet2I;
        }
        protected $_m_pet2IToS;
        public function pet2IToS() {
            if ($this->_m_pet2IToS !== null)
                return $this->_m_pet2IToS;
            $this->_m_pet2IToS = strval($this->pet2());
            return $this->_m_pet2IToS;
        }
        protected $_m_pet2Mod;
        public function pet2Mod() {
            if ($this->_m_pet2Mod !== null)
                return $this->_m_pet2Mod;
            $this->_m_pet2Mod = $this->pet2() + 32768;
            return $this->_m_pet2Mod;
        }
        protected $_m_pet1;
        protected $_m_pet2;
        public function pet1() { return $this->_m_pet1; }
        public function pet2() { return $this->_m_pet2; }
    }
}

namespace Kaitai\Struct\Tests\EnumToIInvalid {
    class Animal {
        const DOG = 102;
        const CAT = 124;

        private const _VALUES = [102 => true, 124 => true];

        public static function isDefined(int $v): bool {
            return isset(self::_VALUES[$v]);
        }
    }
}
