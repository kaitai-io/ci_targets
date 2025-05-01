<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class Enum0 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\Enum0 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
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

namespace Kaitai\Struct\Tests\Enum0 {
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
