<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidFailInEnum extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ValidFailInEnum $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readU4le();
            if (!\Kaitai\Struct\Tests\ValidFailInEnum\Animal::isDefined($this->_m_foo)) {
                throw new \Kaitai\Struct\Error\ValidationNotInEnumError($this->_m_foo, $this->_io, "/seq/0");
            }
        }
        protected $_m_foo;
        public function foo() { return $this->_m_foo; }
    }
}

namespace Kaitai\Struct\Tests\ValidFailInEnum {
    class Animal {
        const DOG = 4;
        const CHICKEN = 12;

        private const _VALUES = [4 => true, 12 => true];

        public static function isDefined(int $v): bool {
            return isset(self::_VALUES[$v]);
        }
    }
}
