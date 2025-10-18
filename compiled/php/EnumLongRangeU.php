<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EnumLongRangeU extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\EnumLongRangeU $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_f1 = $this->_io->readU8be();
            $this->_m_f2 = $this->_io->readU8be();
            $this->_m_f3 = $this->_io->readU8be();
            $this->_m_f4 = $this->_io->readU8be();
        }
        public function f1() { return $this->_m_f1; }
        public function f2() { return $this->_m_f2; }
        public function f3() { return $this->_m_f3; }
        public function f4() { return $this->_m_f4; }
        protected $_m_f1;
        protected $_m_f2;
        protected $_m_f3;
        protected $_m_f4;
    }
}

namespace Kaitai\Struct\Tests\EnumLongRangeU {
    class Constants {
        const ZERO = 0;
        const INT_MAX = 4294967295;
        const INT_OVER_MAX = 4294967296;
        const LONG_MAX = 9223372036854775807;

        private const _VALUES = [0 => true, 4294967295 => true, 4294967296 => true, 9223372036854775807 => true];

        public static function isDefined(int $v): bool {
            return isset(self::_VALUES[$v]);
        }
    }
}
