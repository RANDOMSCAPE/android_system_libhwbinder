#
# Copyright (C) 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := mq_benchmark_service
LOCAL_SRC_FILES := \
    msgq_benchmark_service.cpp

LOCAL_SHARED_LIBRARIES := \
    libhwbinder \
    libbase \
    liblog \
    libcutils \
    libutils \
    libhidlbase \
    libhidltransport

LOCAL_SHARED_LIBRARIES += android.hardware.benchmarks.msgq@1.0 libfmq
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
    msgq_benchmark_client.cpp

LOCAL_SHARED_LIBRARIES := \
    libhwbinder \
    libbase \
    libcutils \
    libutils \
    libhidlbase \
    libhidltransport

LOCAL_SHARED_LIBRARIES += android.hardware.benchmarks.msgq@1.0 libfmq
LOCAL_MODULE := mq_benchmark_client
include $(BUILD_NATIVE_TEST)

