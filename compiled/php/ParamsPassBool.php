<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ParamsPassBool extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ParamsPassBool $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_sFalse = $this->_io->readBitsIntBe(1) != 0;
            $this->_m_sTrue = $this->_io->readBitsIntBe(1) != 0;
            $this->_io->alignToByte();
            $this->_m_seqB1 = new \Kaitai\Struct\Tests\ParamsPassBool\ParamTypeB1($this->sTrue(), $this->_io, $this, $this->_root);
            $this->_m_seqBool = new \Kaitai\Struct\Tests\ParamsPassBool\ParamTypeBool($this->sFalse(), $this->_io, $this, $this->_root);
            $this->_m_literalB1 = new \Kaitai\Struct\Tests\ParamsPassBool\ParamTypeB1(false, $this->_io, $this, $this->_root);
            $this->_m_literalBool = new \Kaitai\Struct\Tests\ParamsPassBool\ParamTypeBool(true, $this->_io, $this, $this->_root);
            $this->_m_instB1 = new \Kaitai\Struct\Tests\ParamsPassBool\ParamTypeB1($this->vTrue(), $this->_io, $this, $this->_root);
            $this->_m_instBool = new \Kaitai\Struct\Tests\ParamsPassBool\ParamTypeBool($this->vFalse(), $this->_io, $this, $this->_root);
        }
        protected $_m_vFalse;
        public function vFalse() {
            if ($this->_m_vFalse !== null)
                return $this->_m_vFalse;
            $this->_m_vFalse = false;
            return $this->_m_vFalse;
        }
        protected $_m_vTrue;
        public function vTrue() {
            if ($this->_m_vTrue !== null)
                return $this->_m_vTrue;
            $this->_m_vTrue = true;
            return $this->_m_vTrue;
        }
        protected $_m_sFalse;
        protected $_m_sTrue;
        protected $_m_seqB1;
        protected $_m_seqBool;
        protected $_m_literalB1;
        protected $_m_literalBool;
        protected $_m_instB1;
        protected $_m_instBool;
        public function sFalse() { return $this->_m_sFalse; }
        public function sTrue() { return $this->_m_sTrue; }
        public function seqB1() { return $this->_m_seqB1; }
        public function seqBool() { return $this->_m_seqBool; }
        public function literalB1() { return $this->_m_literalB1; }
        public function literalBool() { return $this->_m_literalBool; }
        public function instB1() { return $this->_m_instB1; }
        public function instBool() { return $this->_m_instBool; }
    }
}

namespace Kaitai\Struct\Tests\ParamsPassBool {
    class ParamTypeB1 extends \Kaitai\Struct\Struct {
        public function __construct(bool $arg, \Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\ParamsPassBool $_parent = null, ?\Kaitai\Struct\Tests\ParamsPassBool $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m_arg = $arg;
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readBytes(($this->arg() ? 1 : 2));
        }
        protected $_m_foo;
        protected $_m_arg;
        public function foo() { return $this->_m_foo; }
        public function arg() { return $this->_m_arg; }
    }
}

namespace Kaitai\Struct\Tests\ParamsPassBool {
    class ParamTypeBool extends \Kaitai\Struct\Struct {
        public function __construct(bool $arg, \Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\ParamsPassBool $_parent = null, ?\Kaitai\Struct\Tests\ParamsPassBool $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m_arg = $arg;
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readBytes(($this->arg() ? 1 : 2));
        }
        protected $_m_foo;
        protected $_m_arg;
        public function foo() { return $this->_m_foo; }
        public function arg() { return $this->_m_arg; }
    }
}
