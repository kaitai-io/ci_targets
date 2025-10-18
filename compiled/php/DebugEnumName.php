<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class DebugEnumName extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\DebugEnumName $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
        }

        public function _read() {
            $this->_m_one = $this->_io->readU1();
            $this->_m_arrayOfInts = [];
            $n = 1;
            for ($i = 0; $i < $n; $i++) {
                $this->_m_arrayOfInts[] = $this->_io->readU1();
            }
            $this->_m_testType = new \Kaitai\Struct\Tests\DebugEnumName\TestSubtype($this->_io, $this, $this->_root);
            $this->_m_testType->_read();
        }
        public function one() { return $this->_m_one; }
        public function arrayOfInts() { return $this->_m_arrayOfInts; }
        public function testType() { return $this->_m_testType; }
        protected $_m_one;
        protected $_m_arrayOfInts;
        protected $_m_testType;
    }
}

namespace Kaitai\Struct\Tests\DebugEnumName {
    class TestSubtype extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\DebugEnumName $_parent = null, ?\Kaitai\Struct\Tests\DebugEnumName $_root = null) {
            parent::__construct($_io, $_parent, $_root);
        }

        public function _read() {
            $this->_m_field1 = $this->_io->readU1();
            $this->_m_field2 = $this->_io->readU1();
        }
        public function instanceField() {
            if ($this->_m_instanceField !== null)
                return $this->_m_instanceField;
            $this->_m_instanceField = $this->field2() & 15;
            return $this->_m_instanceField;
        }
        public function field1() { return $this->_m_field1; }
        public function field2() { return $this->_m_field2; }
        protected $_m_instanceField;
        protected $_m_field1;
        protected $_m_field2;
    }
}

namespace Kaitai\Struct\Tests\DebugEnumName\TestSubtype {
    class InnerEnum1 {
        const ENUM_VALUE_67 = 67;

        private const _VALUES = [67 => true];

        public static function isDefined(int $v): bool {
            return isset(self::_VALUES[$v]);
        }
    }
}

namespace Kaitai\Struct\Tests\DebugEnumName\TestSubtype {
    class InnerEnum2 {
        const ENUM_VALUE_11 = 11;

        private const _VALUES = [11 => true];

        public static function isDefined(int $v): bool {
            return isset(self::_VALUES[$v]);
        }
    }
}

namespace Kaitai\Struct\Tests\DebugEnumName {
    class TestEnum1 {
        const ENUM_VALUE_80 = 80;

        private const _VALUES = [80 => true];

        public static function isDefined(int $v): bool {
            return isset(self::_VALUES[$v]);
        }
    }
}

namespace Kaitai\Struct\Tests\DebugEnumName {
    class TestEnum2 {
        const ENUM_VALUE_65 = 65;

        private const _VALUES = [65 => true];

        public static function isDefined(int $v): bool {
            return isset(self::_VALUES[$v]);
        }
    }
}
