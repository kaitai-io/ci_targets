<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EnumNegative extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\EnumNegative $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_f1 = $this->_io->readS1();
            $this->_m_f2 = $this->_io->readS1();
        }
        public function f1() { return $this->_m_f1; }
        public function f2() { return $this->_m_f2; }
        protected $_m_f1;
        protected $_m_f2;
    }
}

namespace Kaitai\Struct\Tests\EnumNegative {
    class Constants {
        const NEGATIVE_ONE = -1;
        const POSITIVE_ONE = 1;

        private const _VALUES = [-1 => true, 1 => true];

        public static function isDefined(int $v): bool {
            return isset(self::_VALUES[$v]);
        }
    }
}
