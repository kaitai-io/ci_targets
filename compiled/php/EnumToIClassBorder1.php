<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EnumToIClassBorder1 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\EnumToIClassBorder1 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_pet1 = $this->_io->readU4le();
            $this->_m_pet2 = $this->_io->readU4le();
        }
        public function checker() {
            if ($this->_m_checker !== null)
                return $this->_m_checker;
            $_pos = $this->_io->pos();
            $this->_io->seek(0);
            $this->_m_checker = new \Kaitai\Struct\Tests\EnumToIClassBorder2($this->_root(), $this->_io);
            $this->_io->seek($_pos);
            return $this->_m_checker;
        }
        public function someDog() {
            if ($this->_m_someDog !== null)
                return $this->_m_someDog;
            $this->_m_someDog = 4;
            return $this->_m_someDog;
        }
        public function pet1() { return $this->_m_pet1; }
        public function pet2() { return $this->_m_pet2; }
        protected $_m_checker;
        protected $_m_someDog;
        protected $_m_pet1;
        protected $_m_pet2;
    }
}

namespace Kaitai\Struct\Tests\EnumToIClassBorder1 {
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
