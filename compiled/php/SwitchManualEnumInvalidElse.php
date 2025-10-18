<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class SwitchManualEnumInvalidElse extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\SwitchManualEnumInvalidElse $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_opcodes = [];
            $i = 0;
            while (!$this->_io->isEof()) {
                $this->_m_opcodes[] = new \Kaitai\Struct\Tests\SwitchManualEnumInvalidElse\Opcode($this->_io, $this, $this->_root);
                $i++;
            }
        }
        public function opcodes() { return $this->_m_opcodes; }
        protected $_m_opcodes;
    }
}

namespace Kaitai\Struct\Tests\SwitchManualEnumInvalidElse {
    class Opcode extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\SwitchManualEnumInvalidElse $_parent = null, ?\Kaitai\Struct\Tests\SwitchManualEnumInvalidElse $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_code = $this->_io->readU1();
            switch ($this->code()) {
                case \Kaitai\Struct\Tests\SwitchManualEnumInvalidElse\Opcode\CodeEnum::INTVAL:
                    $this->_m_body = new \Kaitai\Struct\Tests\SwitchManualEnumInvalidElse\Opcode\Intval($this->_io, $this, $this->_root);
                    break;
                case \Kaitai\Struct\Tests\SwitchManualEnumInvalidElse\Opcode\CodeEnum::STRVAL:
                    $this->_m_body = new \Kaitai\Struct\Tests\SwitchManualEnumInvalidElse\Opcode\Strval($this->_io, $this, $this->_root);
                    break;
                default:
                    $this->_m_body = new \Kaitai\Struct\Tests\SwitchManualEnumInvalidElse\Opcode\Defval($this->_io, $this, $this->_root);
                    break;
            }
        }
        public function code() { return $this->_m_code; }
        public function body() { return $this->_m_body; }
        protected $_m_code;
        protected $_m_body;
    }
}

namespace Kaitai\Struct\Tests\SwitchManualEnumInvalidElse\Opcode {
    class Defval extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\SwitchManualEnumInvalidElse\Opcode $_parent = null, ?\Kaitai\Struct\Tests\SwitchManualEnumInvalidElse $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
        public function value() {
            if ($this->_m_value !== null)
                return $this->_m_value;
            $this->_m_value = 123;
            return $this->_m_value;
        }
        protected $_m_value;
    }
}

namespace Kaitai\Struct\Tests\SwitchManualEnumInvalidElse\Opcode {
    class Intval extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\SwitchManualEnumInvalidElse\Opcode $_parent = null, ?\Kaitai\Struct\Tests\SwitchManualEnumInvalidElse $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = $this->_io->readU1();
        }
        public function value() { return $this->_m_value; }
        protected $_m_value;
    }
}

namespace Kaitai\Struct\Tests\SwitchManualEnumInvalidElse\Opcode {
    class Strval extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\SwitchManualEnumInvalidElse\Opcode $_parent = null, ?\Kaitai\Struct\Tests\SwitchManualEnumInvalidElse $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(0, false, true, true), "ASCII");
        }
        public function value() { return $this->_m_value; }
        protected $_m_value;
    }
}

namespace Kaitai\Struct\Tests\SwitchManualEnumInvalidElse\Opcode {
    class CodeEnum {
        const INTVAL = 73;
        const STRVAL = 83;

        private const _VALUES = [73 => true, 83 => true];

        public static function isDefined(int $v): bool {
            return isset(self::_VALUES[$v]);
        }
    }
}
