// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ProcessCoerceUsertype1 : KaitaiStruct
    {
        public static ProcessCoerceUsertype1 FromFile(string fileName)
        {
            return new ProcessCoerceUsertype1(new KaitaiStream(fileName));
        }

        public ProcessCoerceUsertype1(KaitaiStream p__io, KaitaiStruct p__parent = null, ProcessCoerceUsertype1 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _records = new List<Record>();
            for (var i = 0; i < 2; i++)
            {
                _records.Add(new Record(m_io, this, m_root));
            }
        }
        public partial class Foo : KaitaiStruct
        {
            public static Foo FromFile(string fileName)
            {
                return new Foo(new KaitaiStream(fileName));
            }

            public Foo(KaitaiStream p__io, ProcessCoerceUsertype1.Record p__parent = null, ProcessCoerceUsertype1 p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = m_io.ReadU4le();
            }
            private uint _value;
            private ProcessCoerceUsertype1 m_root;
            private ProcessCoerceUsertype1.Record m_parent;
            public uint Value { get { return _value; } }
            public ProcessCoerceUsertype1 M_Root { get { return m_root; } }
            public ProcessCoerceUsertype1.Record M_Parent { get { return m_parent; } }
        }
        public partial class Record : KaitaiStruct
        {
            public static Record FromFile(string fileName)
            {
                return new Record(new KaitaiStream(fileName));
            }

            public Record(KaitaiStream p__io, ProcessCoerceUsertype1 p__parent = null, ProcessCoerceUsertype1 p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_buf = false;
                _read();
            }
            private void _read()
            {
                _flag = m_io.ReadU1();
                if (Flag == 0) {
                    __raw_bufUnproc = m_io.ReadBytes(4);
                    var io___raw_bufUnproc = new KaitaiStream(__raw_bufUnproc);
                    _bufUnproc = new Foo(io___raw_bufUnproc, this, m_root);
                }
                if (Flag != 0) {
                    __raw__raw_bufProc = m_io.ReadBytes(4);
                    __raw_bufProc = m_io.ProcessXor(__raw__raw_bufProc, 170);
                    var io___raw_bufProc = new KaitaiStream(__raw_bufProc);
                    _bufProc = new Foo(io___raw_bufProc, this, m_root);
                }
            }
            private bool f_buf;
            private Foo _buf;
            public Foo Buf
            {
                get
                {
                    if (f_buf)
                        return _buf;
                    _buf = (Foo) ((Flag == 0 ? BufUnproc : BufProc));
                    f_buf = true;
                    return _buf;
                }
            }
            private byte _flag;
            private Foo _bufUnproc;
            private Foo _bufProc;
            private ProcessCoerceUsertype1 m_root;
            private ProcessCoerceUsertype1 m_parent;
            private byte[] __raw_bufUnproc;
            private byte[] __raw_bufProc;
            private byte[] __raw__raw_bufProc;
            public byte Flag { get { return _flag; } }
            public Foo BufUnproc { get { return _bufUnproc; } }
            public Foo BufProc { get { return _bufProc; } }
            public ProcessCoerceUsertype1 M_Root { get { return m_root; } }
            public ProcessCoerceUsertype1 M_Parent { get { return m_parent; } }
            public byte[] M_RawBufUnproc { get { return __raw_bufUnproc; } }
            public byte[] M_RawBufProc { get { return __raw_bufProc; } }
            public byte[] M_RawM_RawBufProc { get { return __raw__raw_bufProc; } }
        }
        private List<Record> _records;
        private ProcessCoerceUsertype1 m_root;
        private KaitaiStruct m_parent;
        public List<Record> Records { get { return _records; } }
        public ProcessCoerceUsertype1 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
