<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class NestedTypeParam extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\NestedTypeParam $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_mainSeq = new \Kaitai\Struct\Tests\NestedTypeParam\Nested\MyType(5, $this->_io, $this, $this->_root);
        }
        protected $_m_mainSeq;
        public function mainSeq() { return $this->_m_mainSeq; }
    }
}

namespace Kaitai\Struct\Tests\NestedTypeParam {
    class Nested extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\NestedTypeParam $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
    }
}

namespace Kaitai\Struct\Tests\NestedTypeParam\Nested {
    class MyType extends \Kaitai\Struct\Struct {
        public function __construct(int $myLen, \Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\NestedTypeParam $_parent = null, ?\Kaitai\Struct\Tests\NestedTypeParam $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m_myLen = $myLen;
            $this->_read();
        }

        private function _read() {
            $this->_m_body = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->myLen()), "ASCII");
        }
        protected $_m_body;
        protected $_m_myLen;
        public function body() { return $this->_m_body; }
        public function myLen() { return $this->_m_myLen; }
    }
}
