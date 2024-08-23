<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EnumIntRangeS extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\EnumIntRangeS $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_f1 = $this->_io->readS4be();
            $this->_m_f2 = $this->_io->readS4be();
            $this->_m_f3 = $this->_io->readS4be();
        }
        protected $_m_f1;
        protected $_m_f2;
        protected $_m_f3;
        public function f1() { return $this->_m_f1; }
        public function f2() { return $this->_m_f2; }
        public function f3() { return $this->_m_f3; }
    }
}

namespace Kaitai\Struct\Tests\EnumIntRangeS {
    class Constants {
        const INT_MIN = -2147483647 - 1;
        const ZERO = 0;
        const INT_MAX = 2147483647;

        private const _VALUES = [-2147483648 => true, 0 => true, 2147483647 => true];

        public static function isDefined(int $v): bool {
            return isset(self::_VALUES[$v]);
        }
    }
}
