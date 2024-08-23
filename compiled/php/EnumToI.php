<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EnumToI extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\EnumToI $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_pet1 = $this->_io->readU4le();
            $this->_m_pet2 = $this->_io->readU4le();
        }
        protected $_m_oneLtTwo;
        public function oneLtTwo() {
            if ($this->_m_oneLtTwo !== null)
                return $this->_m_oneLtTwo;
            $this->_m_oneLtTwo = $this->pet1() < $this->pet2();
            return $this->_m_oneLtTwo;
        }
        protected $_m_pet1EqInt;
        public function pet1EqInt() {
            if ($this->_m_pet1EqInt !== null)
                return $this->_m_pet1EqInt;
            $this->_m_pet1EqInt = $this->pet1() == 7;
            return $this->_m_pet1EqInt;
        }
        protected $_m_pet1I;
        public function pet1I() {
            if ($this->_m_pet1I !== null)
                return $this->_m_pet1I;
            $this->_m_pet1I = $this->pet1();
            return $this->_m_pet1I;
        }
        protected $_m_pet1IToS;
        public function pet1IToS() {
            if ($this->_m_pet1IToS !== null)
                return $this->_m_pet1IToS;
            $this->_m_pet1IToS = strval($this->pet1());
            return $this->_m_pet1IToS;
        }
        protected $_m_pet1Mod;
        public function pet1Mod() {
            if ($this->_m_pet1Mod !== null)
                return $this->_m_pet1Mod;
            $this->_m_pet1Mod = $this->pet1() + 32768;
            return $this->_m_pet1Mod;
        }
        protected $_m_pet2EqInt;
        public function pet2EqInt() {
            if ($this->_m_pet2EqInt !== null)
                return $this->_m_pet2EqInt;
            $this->_m_pet2EqInt = $this->pet2() == 5;
            return $this->_m_pet2EqInt;
        }
        protected $_m_pet1;
        protected $_m_pet2;
        public function pet1() { return $this->_m_pet1; }
        public function pet2() { return $this->_m_pet2; }
    }
}

namespace Kaitai\Struct\Tests\EnumToI {
    class Animal {
        const DOG = 4;
        const CAT = 7;
        const CHICKEN = 12;

        private const _VALUES = [4 => true, 7 => true, 12 => true];

        public static function isDefined(int $v): bool {
            return isset(self::_VALUES[$v]);
        }
    }
}
