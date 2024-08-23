<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EnumLongRangeS extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\EnumLongRangeS $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_f1 = $this->_io->readS8be();
            $this->_m_f2 = $this->_io->readS8be();
            $this->_m_f3 = $this->_io->readS8be();
            $this->_m_f4 = $this->_io->readS8be();
            $this->_m_f5 = $this->_io->readS8be();
            $this->_m_f6 = $this->_io->readS8be();
            $this->_m_f7 = $this->_io->readS8be();
        }
        protected $_m_f1;
        protected $_m_f2;
        protected $_m_f3;
        protected $_m_f4;
        protected $_m_f5;
        protected $_m_f6;
        protected $_m_f7;
        public function f1() { return $this->_m_f1; }
        public function f2() { return $this->_m_f2; }
        public function f3() { return $this->_m_f3; }
        public function f4() { return $this->_m_f4; }
        public function f5() { return $this->_m_f5; }
        public function f6() { return $this->_m_f6; }
        public function f7() { return $this->_m_f7; }
    }
}

namespace Kaitai\Struct\Tests\EnumLongRangeS {
    class Constants {
        const LONG_MIN = -9223372036854775807 - 1;
        const INT_BELOW_MIN = -2147483649;
        const INT_MIN = -2147483647 - 1;
        const ZERO = 0;
        const INT_MAX = 2147483647;
        const INT_OVER_MAX = 2147483648;
        const LONG_MAX = 9223372036854775807;

        private const _VALUES = [-9223372036854775808 => true, -2147483649 => true, -2147483648 => true, 0 => true, 2147483647 => true, 2147483648 => true, 9223372036854775807 => true];

        public static function isDefined(int $v): bool {
            return isset(self::_VALUES[$v]);
        }
    }
}
