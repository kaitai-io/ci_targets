<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class CombineEnum extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\CombineEnum $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_enumU4 = $this->_io->readU4le();
            $this->_m_enumU2 = $this->_io->readU2le();
        }
        protected $_m_enumU4U2;
        public function enumU4U2() {
            if ($this->_m_enumU4U2 !== null)
                return $this->_m_enumU4U2;
            $this->_m_enumU4U2 = (false ? $this->enumU4() : $this->enumU2());
            return $this->_m_enumU4U2;
        }
        protected $_m_enumU4;
        protected $_m_enumU2;
        public function enumU4() { return $this->_m_enumU4; }
        public function enumU2() { return $this->_m_enumU2; }
    }
}

namespace Kaitai\Struct\Tests\CombineEnum {
    class Animal {
        const PIG = 7;
        const HORSE = 12;

        private const _VALUES = [7 => true, 12 => true];

        public static function isDefined(int $v): bool {
            return isset(self::_VALUES[$v]);
        }
    }
}
