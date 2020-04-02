<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class Test extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\Test $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_seqBlock = new \Kaitai\Struct\Tests\Test($this->_io);
        }
        protected $_m_seqBlock;
        public function seqBlock() { return $this->_m_seqBlock; }
    }
}

namespace Kaitai\Struct\Tests\Test {
    class MyType extends \Kaitai\Struct\Struct {
        public function __construct(int $repeatCount, \Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\Test $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m_repeatCount = $repeatCount;
            $this->_read();
        }

        private function _read() {
            $this->_m_world = $this->_io->readS4be();
            $this->_m_repeatedThing = [];
            $n = $this->repeatCount();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_repeatedThing[] = $this->_io->readS4be();
            }
        }
        protected $_m_world;
        protected $_m_repeatedThing;
        protected $_m_repeatCount;
        public function world() { return $this->_m_world; }
        public function repeatedThing() { return $this->_m_repeatedThing; }
        public function repeatCount() { return $this->_m_repeatCount; }
    }
}
