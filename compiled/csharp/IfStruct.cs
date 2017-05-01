// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;
using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{
    public partial class IfStruct : KaitaiStruct
    {
        public static IfStruct FromFile(string fileName)
        {
            return new IfStruct(new KaitaiStream(fileName));
        }

        public IfStruct(KaitaiStream io, KaitaiStruct parent = null, IfStruct root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _op1 = new Operation(m_io, this, m_root);
            _op2 = new Operation(m_io, this, m_root);
            _op3 = new Operation(m_io, this, m_root);
        }
        public partial class Operation : KaitaiStruct
        {
            public static Operation FromFile(string fileName)
            {
                return new Operation(new KaitaiStream(fileName));
            }

            public Operation(KaitaiStream io, IfStruct parent = null, IfStruct root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                _opcode = m_io.ReadU1();
                if (Opcode == 84) {
                    _argTuple = new ArgTuple(m_io, this, m_root);
                }
                if (Opcode == 83) {
                    _argStr = new ArgStr(m_io, this, m_root);
                }
            }
            private byte _opcode;
            private ArgTuple _argTuple;
            private ArgStr _argStr;
            private IfStruct m_root;
            private IfStruct m_parent;
            public byte Opcode { get { return _opcode; } }
            public ArgTuple ArgTuple { get { return _argTuple; } }
            public ArgStr ArgStr { get { return _argStr; } }
            public IfStruct M_Root { get { return m_root; } }
            public IfStruct M_Parent { get { return m_parent; } }
        }
        public partial class ArgTuple : KaitaiStruct
        {
            public static ArgTuple FromFile(string fileName)
            {
                return new ArgTuple(new KaitaiStream(fileName));
            }

            public ArgTuple(KaitaiStream io, IfStruct.Operation parent = null, IfStruct root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                _num1 = m_io.ReadU1();
                _num2 = m_io.ReadU1();
            }
            private byte _num1;
            private byte _num2;
            private IfStruct m_root;
            private IfStruct.Operation m_parent;
            public byte Num1 { get { return _num1; } }
            public byte Num2 { get { return _num2; } }
            public IfStruct M_Root { get { return m_root; } }
            public IfStruct.Operation M_Parent { get { return m_parent; } }
        }
        public partial class ArgStr : KaitaiStruct
        {
            public static ArgStr FromFile(string fileName)
            {
                return new ArgStr(new KaitaiStream(fileName));
            }

            public ArgStr(KaitaiStream io, IfStruct.Operation parent = null, IfStruct root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                _len = m_io.ReadU1();
                _str = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytes(Len));
            }
            private byte _len;
            private string _str;
            private IfStruct m_root;
            private IfStruct.Operation m_parent;
            public byte Len { get { return _len; } }
            public string Str { get { return _str; } }
            public IfStruct M_Root { get { return m_root; } }
            public IfStruct.Operation M_Parent { get { return m_parent; } }
        }
        private Operation _op1;
        private Operation _op2;
        private Operation _op3;
        private IfStruct m_root;
        private KaitaiStruct m_parent;
        public Operation Op1 { get { return _op1; } }
        public Operation Op2 { get { return _op2; } }
        public Operation Op3 { get { return _op3; } }
        public IfStruct M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
