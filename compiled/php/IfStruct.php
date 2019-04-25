<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class IfStruct extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\IfStruct $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_op1 = new \Kaitai\Struct\Tests\IfStruct\Operation($this->_io, $this, $this->_root);
        $this->_m_op2 = new \Kaitai\Struct\Tests\IfStruct\Operation($this->_io, $this, $this->_root);
        $this->_m_op3 = new \Kaitai\Struct\Tests\IfStruct\Operation($this->_io, $this, $this->_root);
    }
    protected $_m_op1;
    protected $_m_op2;
    protected $_m_op3;
    public function op1() { return $this->_m_op1; }
    public function op2() { return $this->_m_op2; }
    public function op3() { return $this->_m_op3; }
}

namespace Kaitai\Struct\Tests\IfStruct;

class Operation extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\IfStruct $_parent = null, \Kaitai\Struct\Tests\IfStruct $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_opcode = $this->_io->readU1();
        if ($this->opcode() == 84) {
            $this->_m_argTuple = new \Kaitai\Struct\Tests\IfStruct\ArgTuple($this->_io, $this, $this->_root);
        }
        if ($this->opcode() == 83) {
            $this->_m_argStr = new \Kaitai\Struct\Tests\IfStruct\ArgStr($this->_io, $this, $this->_root);
        }
    }
    protected $_m_opcode;
    protected $_m_argTuple;
    protected $_m_argStr;
    public function opcode() { return $this->_m_opcode; }
    public function argTuple() { return $this->_m_argTuple; }
    public function argStr() { return $this->_m_argStr; }
}

namespace Kaitai\Struct\Tests\IfStruct;

class ArgTuple extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\IfStruct\Operation $_parent = null, \Kaitai\Struct\Tests\IfStruct $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_num1 = $this->_io->readU1();
        $this->_m_num2 = $this->_io->readU1();
    }
    protected $_m_num1;
    protected $_m_num2;
    public function num1() { return $this->_m_num1; }
    public function num2() { return $this->_m_num2; }
}

namespace Kaitai\Struct\Tests\IfStruct;

class ArgStr extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\IfStruct\Operation $_parent = null, \Kaitai\Struct\Tests\IfStruct $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_len = $this->_io->readU1();
        $this->_m_str = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->len()), "UTF-8");
    }
    protected $_m_len;
    protected $_m_str;
    public function len() { return $this->_m_len; }
    public function str() { return $this->_m_str; }
}
