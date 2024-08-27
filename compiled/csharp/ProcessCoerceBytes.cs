// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ProcessCoerceBytes : KaitaiStruct
    {
        public static ProcessCoerceBytes FromFile(string fileName)
        {
            return new ProcessCoerceBytes(new KaitaiStream(fileName));
        }

        public ProcessCoerceBytes(KaitaiStream p__io, KaitaiStruct p__parent = null, ProcessCoerceBytes p__root = null) : base(p__io)
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
        public partial class Record : KaitaiStruct
        {
            public static Record FromFile(string fileName)
            {
                return new Record(new KaitaiStream(fileName));
            }

            public Record(KaitaiStream p__io, ProcessCoerceBytes p__parent = null, ProcessCoerceBytes p__root = null) : base(p__io)
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
                    _bufUnproc = m_io.ReadBytes(4);
                }
                if (Flag != 0) {
                    __raw_bufProc = m_io.ReadBytes(4);
                    _bufProc = m_io.ProcessXor(__raw_bufProc, 170);
                }
            }
            private bool f_buf;
            private byte[] _buf;
            public byte[] Buf
            {
                get
                {
                    if (f_buf)
                        return _buf;
                    f_buf = true;
                    _buf = (byte[]) ((Flag == 0 ? BufUnproc : BufProc));
                    return _buf;
                }
            }
            private byte _flag;
            private byte[] _bufUnproc;
            private byte[] _bufProc;
            private ProcessCoerceBytes m_root;
            private ProcessCoerceBytes m_parent;
            private byte[] __raw_bufProc;
            public byte Flag { get { return _flag; } }
            public byte[] BufUnproc { get { return _bufUnproc; } }
            public byte[] BufProc { get { return _bufProc; } }
            public ProcessCoerceBytes M_Root { get { return m_root; } }
            public ProcessCoerceBytes M_Parent { get { return m_parent; } }
            public byte[] M_RawBufProc { get { return __raw_bufProc; } }
        }
        private List<Record> _records;
        private ProcessCoerceBytes m_root;
        private KaitaiStruct m_parent;
        public List<Record> Records { get { return _records; } }
        public ProcessCoerceBytes M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
