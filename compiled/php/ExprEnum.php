<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprEnum extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ExprEnum $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = $this->_io->readU1();
        }
        public function constDog() {
            if ($this->_m_constDog !== null)
                return $this->_m_constDog;
            $this->_m_constDog = 4;
            return $this->_m_constDog;
        }
        public function derivedBoom() {
            if ($this->_m_derivedBoom !== null)
                return $this->_m_derivedBoom;
            $this->_m_derivedBoom = $this->one();
            return $this->_m_derivedBoom;
        }
        public function derivedDog() {
            if ($this->_m_derivedDog !== null)
                return $this->_m_derivedDog;
            $this->_m_derivedDog = $this->one() - 98;
            return $this->_m_derivedDog;
        }
        public function one() { return $this->_m_one; }
        protected $_m_constDog;
        protected $_m_derivedBoom;
        protected $_m_derivedDog;
        protected $_m_one;
    }
}

namespace Kaitai\Struct\Tests\ExprEnum {
    class Animal {
        const DOG = 4;
        const CAT = 7;
        const CHICKEN = 12;
        const BOOM = 102;

        private const _VALUES = [4 => true, 7 => true, 12 => true, 102 => true];

        public static function isDefined(int $v): bool {
            return isset(self::_VALUES[$v]);
        }
    }
}
